print("obj_global_controller, async ","async");

if (async_load[? "status"] == 200){
	print("obj_global_controller, async ","status == 200");
	switch(async_load[? "type"]){
		case "FirebaseFirestore_Collection_Listener":
			print("obj_global_controller, async ","Query");
			FirebaseFirestore(root).Query();
			break;
		case "FirebaseFirestore_Collection_Query":
			print("obj_global_controller, async ","value");
			data = [];
			var _doc = async_load[? "value"];
			var _data = json_parse(_doc);
			var _names = variable_struct_get_names(_data);
			for(var _i = 0; _i<array_length(_names); _i++;){
				var _doc = variable_struct_get(_data, _names[_i]);
				_doc.id = _names[_i];
				array_push(data, _doc);
			}
			
			array_sort(data, sort_score);
			break;
		default:
			
	}
}