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
			playable=0;
			path="missions\larche\larche_legacy.sqf";
			requires=[];
		};
		class ArudyLegacy {
			name="Fichier d'inventaire";
			description="Un officier du CSAT est en ce moment déployé sur Malden pour effectuer un inventaire de tout le matériel militaire présent sur l'île. Il s'agit du genre d'informations qui nous serait très utile. La dernière localisation connue de cet officier est Arudy, trouvez son ordinateur et dérobez l'inventaire qui doit y être stocké.";
			type="download";
			location="getArray(configFile >> 'CfgWorlds' >> worldName >> 'Names' >> 'Malden_V_Arudy' >> 'position')";
			playable=1;
			path="missions\arudy\arudy_legacy.sqf";
			requires=[];
		};
	};
};