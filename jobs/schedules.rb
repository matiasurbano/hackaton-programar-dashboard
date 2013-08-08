
current_speedmeter =0
current_title=""
current_value=0

speedmeter_values = [
  {"title"=>"Datasets", "value"=>"18"}, {"title"=>"Organismos", "value"=>"10"}, {"title"=>"Participantes", "value"=>"250"}, 
  {"title"=>"Proyectos", "value"=>"25"},{"title"=>"Hackers", "value"=>"80"}, {"title"=>"Periodistas", "value"=>"30"}]


SCHEDULER.every '3s' do

  current_speedmeter = current_speedmeter + 1
  if current_speedmeter > speedmeter_values.length
    current_speedmeter = 0
  end

  current_title = speedmeter_values[current_speedmeter]["title"]
  current_value = speedmeter_values[current_speedmeter]["value"]
  send_event('speedmeter',   {title: current_title , value: current_value })
end



current_speedmeter_data =0
current_title_data = ""
current_value_data = 0


speedmeter_values_data = [
  {"title"=>"Datasets", "value"=>"18"}, 
  {"title"=>"Recursos", "value"=>"60"}, 
  {"title"=>"Registros", "value"=>"264000"}, 
  {"title"=>"Markers", "value"=>"90000"}]

SCHEDULER.every '5s' do

  current_speedmeter_data = current_speedmeter_data + 1
  if current_speedmeter_data > speedmeter_values_data.length
    current_speedmeter_data = 0
  end

  current_title_data = speedmeter_values_data[current_speedmeter_data]["title"]
  current_value_data = speedmeter_values_data[current_speedmeter_data]["value"]
  send_event('speedmeter_data',   {title: current_title_data , value: current_value_data })
end




current_datasets =0
current_datasets_title = ""
current_datasets_text = 0
current_datasets_tags = ""
current_datasets_image = ""

dataset_values = [
    {"title"=>"HotelViz", "text"=>"Visualizador de Destinos Turísticos y Ocupación Hotelera", "tags"=>"TURISMO", "image" => "HotelViz.PNG"}, 
    {"title"=>"Preparación y Emergencia Ciudadana", "text"=>"Estas preparado para una emergencia? Emergencia Ciudadana es una aplicación para ayudarte a que estés preparado ante una emergencia. El equipo de Goblab.org que la llevó adelante es: @guidobesponja @drcousin @nadersebastian @mguchito @jkbzas Con la ayuda indispensable de: @rundes @Ramaxiot @icoperazzo @neverkas @tourdefran @Sr_Navidad", "tags"=>"INDEC | SALUD | TURISMO", "image" => "ciudadana.png"}, 
    {"title"=>"Evolución de indicadores educativos", "text"=>"Usar micromaps de D3.js para visualizar indicadores de promoción, abandono y repitencia por nivel educativo por provincia de 2003 a 2009", "tags"=>"EDUCACION", "image" => "IndicadoresEducativos.PNG"}, 
  ]

SCHEDULER.every '5s' do

  current_datasets = current_datasets + 1
  if current_datasets > dataset_values.length
    current_datasets = 0
  end

  current_datasets_title = dataset_values[current_datasets]["title"]
  current_datasets_text =  dataset_values[current_datasets]["text"]
  current_datasets_tags =  "DATASETS: " + dataset_values[current_datasets]["tags"]
  current_datasets_image = dataset_values[current_datasets]["image"]
  send_event('datasets',   {title: current_title_data , text: current_value_data , tags: current_datasets_tags, image: current_datasets_image})
end




