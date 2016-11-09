# example cidades estados

Select dinâmico com todas as cidades e estados adicionado no arquivo seeds.rb

1. crie os models estado, cidade e pessoa
  ex: rails g model cidade nome estado:references

```ruby
class Cidade < ActiveRecord::Base
  belongs_to :estado
end

class Estado < ActiveRecord::Base
	has_many :cidades
end

class Pessoa < ActiveRecord::Base
  belongs_to :cidade
end
```

2. crie o seguinte arquivo caso nao exista 

`app/assets/pessoas.coffee`
```js
$(document).on 'change', '#estados_select', (evt) ->
    $.ajax 'update_cidades',
      type: 'GET'
      dataType: 'script'
      data: {
        estado_id: $("#estados_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic disciplina select OK!")
```
continua...
