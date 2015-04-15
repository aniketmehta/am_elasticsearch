### class to send ENC from foreman for elasticsearch template
class elasticsearch::mytemplate (
  $elasticsearch_templates = {
    # these values you will see as default in your ENC like The Foreman
    instance01 => {
      ensure  =>  'present',
      file    => undef,
      host    => 'localhost',
      port    => 9200,
    },
  },
  $elasticsearch_templates_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
      ensure  =>  'present',
      file    => undef,
      host    => 'localhost',
      port    => 9200,
  },
) {

  # call elasticsearch::template define to configure each elasticsearch template
  create_resources(elasticsearch::template, $elasticsearch_templates, $elasticsearch_templates_defaults)

}