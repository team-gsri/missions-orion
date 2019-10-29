class DwMissions {
	class MainMissions {
		class LolisseLegacy {
			name="Batterie AA";
			description="Nos aéronefs ne peuvent pas approcher l'île tant que la batterie AA de Lolisse est active. Faites le nécessaire pour la rendre inopérante.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Lolisse' >> 'position')";
            playable=1;
            path="missions\lolisse\lolisse1.sqf";
            requires=[];
		};
		class LarcheLegacy {
			name="Noeud de télécommunications";
			description="Il semble que le CSAT emploie la région de Larche comme noeud central pour les communications courte-portée de ses troupes sur l'île. Perturbez les opérations ennemies en détruisant l'équipement adéquat.";
			type="destroy";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_C_Larche' >> 'position')";
            playable=1;
            path="missions\larche\larche_legacy.sqf";
            requires=[];
		};
	};
};