if (async_load[? "status"] == 200 && should_check_scores){
	switch(async_load[? "type"]){
		case "FirebaseFirestore_Collection_Listener":
			FirebaseFirestore(root).Query();
			break;
		case "FirebaseFirestore_Collection_Query":
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
			should_check_scores = false;
			//highscore_tobeat = int64(data[4].score);
			highscore_tobeat = 100;
			break;
		default:
			
	}
}