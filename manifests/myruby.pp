#### Class for ENC like foreman for elastic search ruby
class elasticsearch::myruby (
  $elasticsearch_ruby = {
    # these values you will see as default in your ENC like The Foreman
    instance01 => {
      ensure  =>  'present',
    },
  },
  $elasticsearch_ruby_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
      ensure  =>  'present',
  },
) {

  # call elasticsearch::ruby define to configure each elasticsearch ruby
  create_resources(elasticsearch::ruby, $elasticsearch_ruby, $elasticsearch_ruby_defaults)

}