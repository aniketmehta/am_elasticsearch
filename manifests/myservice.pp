#### Class for ENC like foreman for elastic search service
class elasticsearch::myservice (
  $elasticsearch_services = {
    # these values you will see as default in your ENC like The Foreman
    instance01 => {
      ensure             => 'present',
      status             => 'enabled',
      init_defaults_file => '/etc/init.d/elasticsearch-instance01',
      init_defaults      => {
			     'ES_USER' => 'elasticsearch', 
			     'ES_GROUP' => 'elasticsearch'
                            },
      init_template      => 'elasticsearch/etc/init.d/elasticsearch.Debian.erb',
    },	
  },
  $elasticsearch_services_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
      ensure             => 'present',
      status             => 'enabled',
      #init_defaults_file => undef,
      #init_defaults      => undef,
      #init_template      => undef,	
  },
) {

  # call elasticsearch::service define to configure each elasticsearch service
  create_resources(elasticsearch::service, $elasticsearch_services, $elasticsearch_services_defaults)

}


