class Planet {
  final String name;
  final String imagePath;
  final String modelPath;
  final String title;
  final String about;
  final String distanceFromSun;
  final String dayLength;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  const Planet({
    required this.name,
    required this.imagePath,
    required this.modelPath,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.dayLength,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });
}







const List<Planet> planets = [
  Planet(
    name: "Sun",
    imagePath: "lib/core/Assets/images/sun.png",
    modelPath: "lib/core/Assets/3d_images/sun.glb",
    title: "The Sun: Our Solar System's Star",
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distanceFromSun: "0",
    dayLength: "0",
    orbitalPeriod: "0",
    radius: "695,700",
    mass: "1.989 × 10³⁰",
    gravity: "274",
    surfaceArea: "6.09 × 10¹²",
  ),
  Planet(
    name: "Mercury",
    imagePath: "lib/core/Assets/images/mercury.png",
    modelPath: "lib/core/Assets/3d_images/mercury.glb",
    title: "Mercury: The Closest Planet",
    about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
    distanceFromSun: "57,909,227",
    dayLength: "1,407.60",
    orbitalPeriod: "0.24",
    radius: "2,439.70",
    mass: "3.301 × 10²³",
    gravity: "3.7",
    surfaceArea: "7.48 × 10⁷",
  ),
  Planet(
    name: "Venus",
    imagePath: "lib/core/Assets/images/venus.png",
    modelPath: "lib/core/Assets/3d_images/venus.glb",
    title: "Venus: Earth's Toxic Twin",
    about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
    distanceFromSun: "108,209,072",
    dayLength: "5,832.20",
    orbitalPeriod: "0.62",
    radius: "6,051.80",
    mass: "4.867 × 10²⁴",
    gravity: "8.87",
    surfaceArea: "4.60 × 10⁸",
  ),
  Planet(
    name: "Earth",
    imagePath: "lib/core/Assets/images/earth.png",
    modelPath: "lib/core/Assets/3d_images/earth.glb",
    title: "Earth: Our Blue Marble",
    about: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    distanceFromSun: "149,598,026",
    dayLength: "23.93",
    orbitalPeriod: "1",
    radius: "6,371",
    mass: "5.972 × 10²⁴",
    gravity: "9.81",
    surfaceArea: "5.10 × 10⁸",
  ),
  Planet(
    name: "Mars",
    imagePath: "lib/core/Assets/images/mars.png",
    modelPath: "lib/core/Assets/3d_images/mars.glb",
    title: "Mars: The Red Planet",
    about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
    distanceFromSun: "227,943,824",
    dayLength: "24.62",
    orbitalPeriod: "1.88",
    radius: "3,389.50",
    mass: "6.39 × 10²³",
    gravity: "3.71",
    surfaceArea: "1.45 × 10⁸",
  ),
  Planet(
    name: "Jupiter",
    imagePath: "lib/core/Assets/images/jupiter.png",
    modelPath: "lib/core/Assets/3d_images/jupiter.glb",
    title: "Jupiter: The Gas Giant",
    about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    distanceFromSun: "778,547,669",
    dayLength: "9.92",
    orbitalPeriod: "11.86",
    radius: "69,911",
    mass: "1.898 × 10²⁷",
    gravity: "24.79",
    surfaceArea: "6.21 × 10¹⁵",
  ),
  Planet(
    name: "Saturn",
    imagePath: "lib/core/Assets/images/saturn.png",
    modelPath: "lib/core/Assets/3d_images/saturn.glb",
    title: "Saturn: The Ringed Planet",
    about: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
    distanceFromSun: "1,426,666,422",
    dayLength: "10.66",
    orbitalPeriod: "29.46",
    radius: "58,232",
    mass: "5.683 × 10²⁶",
    gravity: "10.44",
    surfaceArea: "4.27 × 10¹⁵",
  ),
  Planet(
    name: "Uranus",
    imagePath: "lib/core/Assets/images/uranus.png",
    modelPath: "lib/core/Assets/3d_images/uranus.glb",
    title: "Uranus: The Tilted Planet",
    about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    distanceFromSun: "2,870,990,000",
    dayLength: "17.24",
    orbitalPeriod: "84.01",
    radius: "25,362",
    mass: "8.681 × 10²⁵",
    gravity: "8.69",
    surfaceArea: "8.1 × 10¹⁵",
  ),
  Planet(
    name: "Neptune",
    imagePath: "lib/core/Assets/images/neptune.png",
    modelPath: "lib/core/Assets/3d_images/neptune.glb",
    title: "Neptune: The Distant World",
    about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
    distanceFromSun: "4,498,252,900",
    dayLength: "16.11",
    orbitalPeriod: "164.8",
    radius: "24,622",
    mass: "1.024 × 10²⁶",
    gravity: "11.15",
    surfaceArea: "7.65 × 10¹⁵",
  ),
];

