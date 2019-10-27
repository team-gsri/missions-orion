class DwMissions {
	class MainMissions {
		class Lolisse {
			name="Batterie AA";
			description="Nos aéronefs ne peuvent pas approcher l'île tant que la batterie AA de Lolisse est active. Faites le nécessaire pour la rendre inopérante.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Lolisse' >> 'position')";
            playable=1;
            path="missions\lolisse\lolisse1.sqf";
            requires=[];
		};
	};
};