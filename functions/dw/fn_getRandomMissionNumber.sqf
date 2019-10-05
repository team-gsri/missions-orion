params["_type","_fob",["_zone", ""]];
_val = 0;
if(_type == "main") then {
	_val = switch(_fob) do
	{
		case "moray":
		{
			switch (_zone) do 
			{
				case "dummy": { 1 };
			};
		};
		case "nord":
		{
			switch (_zone) do 
			{
				case "dummy": { 1 };
			};
		};
		case "montagne":
		{
			switch (_zone) do 
			{
				case "dummy": { 1 };
			};
		};
		case "sud":
		{
			switch (_zone) do 
			{
				case "dummy": { 1 };
			};
		};
		case "ile":
		{
			switch (_zone) do 
			{
				case "dummy": { 1 };
			};
		};
	};
} else {
	_val = switch(_fob) do
	{
		case "moray": { 0 };
		case "nord": { 0 };
		case "montagne": { 0 };
		case "sud": { 0 };
		case "ile": { 0 };
	};
};

_ret = 1 + floor(random _val);
_ret