# **Space Odyssey: Particle Star Background**

**Space Odyssey** is a simple 2D space simulation game built with **Godot Engine** (v4.3) using **.NET** and **C#**. The game features a dynamic star background, which is generated using particle systems for a realistic and immersive space environment.

## **Game Description**
In **Space Odyssey**, players explore space in a procedurally generated universe. The game features:
- A dynamic **starry sky** background made using **CPUParticles2D** with randomized star sizes and velocities.
- A **parallax scrolling** background to create the illusion of depth in space.
- **Asteroids**, **enemy ships**, and other space phenomena that players can interact with.

## **Technologies**
- **Godot Engine (v4.3)** – A powerful open-source game engine.
- **.NET** – Used for scripting with **C#**.
- **GitHub** – For version control and collaboration.

## **Installation Instructions**

To get started with the project, follow these steps:

1. Clone the repository:

   ```git clone https://github.com/arnaudober/escape-from-nebula-prime.git```

2. Install Godot Engine:
   - Download and install **Godot 4.3** from [the official website](https://godotengine.org/download).
   
3. Open the project:
   - Open **Godot** and click on **Open Project**.
   - Select the folder where you cloned the repository.

4. Run the game:
   - Press **F5** or click on **Play** in the editor to run the game.

## **Project Structure**

```/escape-from-nebula-prime
├── /assets                    # Folder for game assets (images, sounds, etc.)
├── /scenes                    # Folder for the scenes in the game
│   ├── background.tscn        # Background scene with star particles
│   ├── main_scene.tscn        # Main gameplay scene
├── /scripts                   # Folder for C# scripts
│   ├── PlayerShip.cs          # Player ship logic
│   ├── StarBackground.cs      # Particle system for the starry sky
├── /textures                  # Folder for texture assets
│   ├── star_texture.png       # Circular texture for stars
└── /project.godot             # Godot project file
```

## **How to Contribute**

If you'd like to contribute to **Escape From Nebula Prime**, feel free to fork the project and submit a pull request. Here's how you can contribute:

1. Fork the repository on GitHub.
2. Clone your fork to your local machine.
3. Make your changes and commit them.
4. Push your changes to your fork.
5. Open a pull request with a description of the changes.

## **License**

This project is open-source and available under the [MIT License](LICENSE).

## **Acknowledgements**
- **Godot Engine**: For providing a powerful, flexible game engine.
- **.NET**: For the ease of using C# in the Godot engine.
- **Open Source Libraries and Resources**: For the assets.

---

### **Customization Notes**
- **Star Background**: Uses **CPUParticles2D** to simulate a starry sky. The particles are randomized in size and speed to create a realistic effect.
- **Textures**: A simple round texture is used for the particles to simulate stars.
