#include "game.h"
#include "resource_manager.h"
#include "sprite_renderer.h"
#include <iostream>
using std::cerr;
using std::endl;
#include <fstream>
using std::ofstream;
#include <cstdlib> // for exit function

SpriteRenderer  *Renderer;
int num[15][15]; 


Game::Game(unsigned int width, unsigned int height) 
    : State(GAME_ACTIVE), Keys(), Width(width), Height(height)
{ 

}

Game::~Game()
{
    
}

// Initial size of the player paddle
const glm::vec2 PLAYER_SIZE(40.0f, 40.0f);
// Initial velocity of the player paddle
const float PLAYER_VELOCITY(150.0f);

GameObject      *Player;
GameObject      *Enemy;

void checkNeighbours(int x, int y)
{
    if(num[x][y] == 0)
    {
        //check if value is 1 in its immediate neighbours
        if((x > 0 && num[x-1][y] == 0) && (x < 14 && num[x+1][y] == 0) && ( y > 0 && num[x][y-1] == 0) && (y < 14 && num[x][y+1] == 0) && (y > 0 && x > 0 && num[x-1][y-1] == 0) && (x > 0 && y < 14 && num[x-1][y+1] == 0) && (x < 14 && y > 0 && num[x+1][y-1] == 0) && (x < 14 && y < 14 && num[x+1][y+1] == 0))
        {
            num[x][y] = 1;
        }
    }
}

void generateLevel(std::string fileName)
{
    ofstream outdata; // outdata is like cin
    int i; // loop index
    // initialize all values to 0
    for (i = 0; i < 15; i++)
        for (int j = 0; j < 15; j++)
            num[i][j] = 0;
    

    outdata.open(fileName); // opens the file
    if( !outdata ) { // file couldn't be opened
        cerr << "Error: file could not be opened: " << fileName << endl;
        exit(1);
    }
    for(int i = 0; i < 15; i++)
    {
        outdata << 1 << " ";
    }
    outdata << endl;
    int coincount = 0;
    for (i=1; i<14; ++i)
    {
        num[i][0] = 1;
        outdata << num[i][0] << " ";
        int onecount = 0;
        for(int j = 1; j < 14; j++)
        {
            num[i][j] = rand() % 15;
        
            if(num[i][j] == 1 && onecount < 4)
            {
                // check if its close to the corner
                if(i == 1 || i == 13 || j == 1 || j == 13)
                {
                    num[i][j] = 0;
                    outdata << num[i][j] << " ";
                }
                else
                {
                    outdata << num[i][j] << " ";
                    onecount++;
                }
            }
            else if(num[i][j] == 2 && coincount < 10)
            {
                outdata << num[i][j] << " ";
                coincount++;
            }
            else
            {
                num[i][j] = 0;
                outdata << num[i][j] << " ";
            }
        }
        num[i][14] = 1;
        outdata << num[i][14] << endl;
        // outdata << endl;
    }
    for(int i = 0; i < 15; i++)
    {
        num[14][i] = 1;
        outdata << num[14][i] << " ";
    }
    outdata.close();
}

void Game::Init()
{
    // load shaders
    ResourceManager::LoadShader("shaders/sprite.vs", "shaders/sprite.frag", nullptr, "sprite");
    // configure shaders
    glm::mat4 projection = glm::ortho(0.0f, static_cast<float>(this->Width), 
        static_cast<float>(this->Height), 0.0f, -1.0f, 1.0f);
    ResourceManager::GetShader("sprite").Use().SetInteger("image", 0);
    ResourceManager::GetShader("sprite").SetMatrix4("projection", projection);
    // set render-specific controls
    Renderer = new SpriteRenderer(ResourceManager::GetShader("sprite"));
    // load textures
    ResourceManager::LoadTexture("textures/background4.jpg", false, "background");
    ResourceManager::LoadTexture("textures/awesomeface.png", true, "face");
    ResourceManager::LoadTexture("textures/block.png", false, "block");
    ResourceManager::LoadTexture("textures/block_solid.png", false, "block_solid");
    ResourceManager::LoadTexture("textures/character_0002.png", true, "paddle");
    ResourceManager::LoadTexture("textures/character_0014.png", true, "enemy");
    ResourceManager::LoadTexture("textures/tile_0151.png", true, "coin");

    //generate levels
    srand(time(0));
    generateLevel("levels/one.lvl");
    // load levels
    GameLevel one; one.Load("levels/one.lvl", this->Width, this->Height);
    GameLevel two; two.Load("levels/two.lvl", this->Width, this->Height / 2);
    GameLevel three; three.Load("levels/three.lvl", this->Width, this->Height / 2);
    GameLevel four; four.Load("levels/four.lvl", this->Width, this->Height / 2);
    this->Levels.push_back(one);
    this->Levels.push_back(two);
    this->Levels.push_back(three);
    this->Levels.push_back(four);
    this->Level = 0;

    glm::vec2 playerPos = glm::vec2(
        this->Width / 2.0f - PLAYER_SIZE.x / 2.0f, 
        this->Height - 2*PLAYER_SIZE.y - 2.0f
    );
    Player = new GameObject(playerPos, PLAYER_SIZE, ResourceManager::GetTexture("paddle"));

    glm::vec2 enemyPos = glm::vec2(
    this->Width / 2.0f - PLAYER_SIZE.x / 2.0f, 
    this->Height - PLAYER_SIZE.y
    );
    Enemy = new GameObject(enemyPos, PLAYER_SIZE, ResourceManager::GetTexture("enemy"));
}

void Game::Update(float dt)
{
    // check for collisions
    this->DoCollisions();
}

void Game::ProcessInput(float dt)
{
    if (this->State == GAME_ACTIVE)
    {
        float velocity = PLAYER_VELOCITY * dt;
        // move playerboard
        if (this->Keys[GLFW_KEY_A])
        {
            if (Player->Position.x >= 0.0f)
                Player->Position.x -= velocity;
        }
        if (this->Keys[GLFW_KEY_D])
        {
            if (Player->Position.x <= this->Width - Player->Size.x)
                Player->Position.x += velocity;
        }
        if (this->Keys[GLFW_KEY_W])
        {
            if (Player->Position.y >= 0.0f)
                Player->Position.y -= velocity;
        }
        if (this->Keys[GLFW_KEY_S])
        {
            if (Player->Position.y <= this->Height - Player->Size.y)
                Player->Position.y += velocity;
        }
    }
}

void Game::Render()
{
    if(this->State == GAME_ACTIVE)
    {
        // draw background
        Renderer->DrawSprite(ResourceManager::GetTexture("background"), 
            glm::vec2(0.0f, 0.0f), glm::vec2(this->Width, this->Height), 0.0f
        );
        // draw level
        this->Levels[this->Level].Draw(*Renderer);
        // draw player
        Player->Draw(*Renderer);
        Enemy->Draw(*Renderer);
    }
}

bool CheckCollision(GameObject &one, GameObject &two) // AABB - AABB collision
{
    // collision x-axis?
    bool collisionX = one.Position.x + one.Size.x >= two.Position.x &&
        two.Position.x + two.Size.x >= one.Position.x;
    // collision y-axis?
    bool collisionY = one.Position.y + one.Size.y >= two.Position.y &&
        two.Position.y + two.Size.y >= one.Position.y;
    // collision only if on both axes
    return collisionX && collisionY;
}  

int count = 0;

void Game::DoCollisions()
{
    for (GameObject &box : this->Levels[this->Level].Bricks)
    {
        if (!box.Destroyed)
        {
            if (CheckCollision(*Player, box))
            {
                if (!box.IsSolid)
                    box.Destroyed = true;
                else
                {
                    std::cout << "collision detected with wall: " << count++ << endl;
                }
            }
        }
    }
}  