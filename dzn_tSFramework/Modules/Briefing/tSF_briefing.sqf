//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"     После отставки правительства в ноябре 2017 г. ситуация в Финляндии начала развиваться по украинскому сценарию, и на близлежащих к России территориях появились очаги сепаратизма. Местное люмпенизированное население и криминальные элементы начали активно требовать переход под юрисдикцию РФ, получая гуманитарную помощь и вооружения для ""защиты своей свободы"" через границу.
<br />     Сепаратисты полностью контролируют район Kissamäki, в г. Joensuu, и на данный момент полностью заблокированы со всех сторон и угроза локализована, однако сепаратисты намерены идти на шантаж - проведение референдума сроком 1 неделю, либо они взорвут местный промышленный комплекс. Мэр города попытался провести переговоры без нашего участия и находясь на захваченной сепаратистами территорию подтвердил что это не блеф, однако когда он попытался вернуться обратно был захвачен и используется как заложник.
<br />     Нам нужно срочно разрешить ситуацию. Никаких переговоров мы более не ведем."
END

TOPIC("А. Враждебные силы:")
"Финские/русские сепаратисты
<br />     Численность - 1/2 взвода"
END

TOPIC("Б. Дружественные силы:")
"Puolustusvoimat, Finland Defence Forces  - Специальное подразделение Perkele
<br />1'1 - 9 чел.
<br />1'2 - 9 чел.
<br />1'3 - 9 чел.
<br />1'6 - 4 чел."
END

TOPIC("II. Задание:")
"1. Найти и обезвредить СВУ на территории промышленного комплекса
<br />2. Найти и эвакуировать мэра
<br />
<br />GR снаряжены HuntIR камерами, а техника беспилотниками, пользуйтесь ими чтобы найти заминированное здание и мэра города
<br />"
END

TOPIC("III. Выполнение:")
"По плану командира.
<br />"
END

TOPIC("IV. Поддержка:")
"Land vehicles
<br />     x3 - Patria AMV XA-360
<br />     x1 - Landrover (unarmed)
<br />     x1 - Truck (M2)
<br />     x1 - Truck (AMMO)
<br />
<br />Air Support
<br />     Salami-1
<br />     Salami-2"
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />1'3 - SR CH 3
<br />1'6 - SR CH 6"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

ADD_TOPICS