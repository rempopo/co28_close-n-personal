tp1 = [6582.47,2407.76,5];
tp2 = [6583.67,2406.78,4.85901];

tp3 = [6587.71,2403.34,9];
tp4 = [6586.16,2404.53,9.46412];

tp5 = [6782.35,2499.15,15.1391];
tp6 = [6783.46,2501.29,0];

tp7 = [6866.95,2502.94,6.41517];
tp8 = [6867.19,2505.2,0];

tp9 = [6863.69,2496.13,38.7066];
tp10 = [6866.2,2496.39,6.41517];

tp11 = [6861.92,2498.08,39.8627];
tp12 = [6865.61,2498.46,38.6529];

tp13 = [6430.78,2654.69,36.9003];
tp14 = [6428.4,2658.5,31.0325];

// Snowflakes

t1 addAction ["Go other side", { player setpos tp1;}];
t2 addAction ["Go other side", { player setpos tp2;}];

t3 addAction ["Go other side", { player setpos tp3;}];
t4 addAction ["Go other side", { player setpos tp4;}];

t5 addAction ["Go Up", { player setpos tp5;}];
t6 addAction ["Go Down", { player setpos tp6;}];

t7 addAction ["Go Up", { player setpos tp7;}];
t8 addAction ["Go Down", { player setpos tp8;}];

t9 addAction ["Go Up", { player setpos tp9;}];
t10 addAction ["Go Down", { player setpos tp10;}];

t11 addAction ["Go Up", { player setpos tp11;}];
t12 addAction ["Go Down", { player setpos tp12;}];

t13 addAction ["Go Up", { player setpos tp13;}];
t14 addAction ["Go Down", { player setpos tp14;}];


// Snowflakes
	[] execVM "goon_snowstorm.sqf";

// Play snowflake	
	0 = [] spawn { while{true} do { playmusic "snowfall_music"; sleep 190; }; };
	




