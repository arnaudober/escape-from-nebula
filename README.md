# **Escape From Nebula Prime**

**Escape From Nebula Prime** is a 2D space shooter game where you control a ship that can move in all directions and shoot to defeat enemy ships. As you progress through levels, the difficulty increases with more enemies, faster ships, and new obstacles.

<img src="https://raw.githubusercontent.com/arnaudober/escape-from-nebula-prime/refs/heads/develop/assets/boot_splash.png" alt="Game Logo" width="400"/>

## **Game Concept**
- **Player Ship:** Move up, down, left, or right within constraints. Shoot to destroy enemy ships.
- **Enemies:** Enemy ships appear on the opposite side of the screen and shoot toward the player.
- **Asteroids:** Floating obstacles that add difficulty to navigation.
- **Escape Portal:** At the end of each level, an escape portal appears. The player must reach it to progress to the next level.
- **Levels:** Each level increases in difficulty. More enemies, faster ships, new boosters, and stronger enemies await.
- **HUD:** Displays the player's score, current level, and available boosters.

## **Gameplay Features**
- Simple ship movement and shooting mechanics.
- Dynamic space environment including stars and asteroids.
- Increasing difficulty with each level: more enemies, faster ships, and additional obstacles.
- Collect boosters and reach the escape portal to advance to the next level.

## **Technologies**
- **Godot Engine (v4.3):** Game development engine.
- **.NET & C#:** Scripting for game mechanics.
- **GitHub:** Version control for collaboration.

## **Project Structure**

```/escape-from-nebula-prime  
├── /assets                    # Game assets (images, sounds, etc.)  
├── /scenes                    # Game scenes  
│   ├── background.tscn        # Background scene with stars  
│   ├── main_scene.tscn        # Main gameplay scene  
├── /scripts                   # C# scripts  
│   ├── PlayerShip.cs          # Player ship logic  
│   ├── EnemyShip.cs           # Enemy ship logic  
│   ├── Asteroid.cs            # Asteroid logic  
│   ├── HUD.cs                 # HUD logic for displaying score, level, etc.  
└── /project.godot             # Godot project file
```  

## **Installation Instructions**

1. **Clone the repository**:  
   ```git clone https://github.com/yourusername/escape-from-nebula-prime.git```

2. **Install Godot Engine** from [the official website](https://godotengine.org/download).

3. **Open the project** in Godot and press **F5** to run the game.

## **How to Contribute**  
Feel free to fork the repository and submit pull requests. Contributions are welcome!

## **License**  
This project is open-source and available under the [MIT License](LICENSE).
