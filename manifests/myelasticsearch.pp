class elasticsearch::myelasticsearch (
  $elasticsearch_instances = {
    # these values you will see as default in your ENC like The Foreman
    instance01 => {
      ensure  =>  'present',
      status  =>  'enabled',
      #config =>  { 'node.name' => 'nodename', 'cluster.name' => 'otherclustername' },
      #configdir  =>  '/etc/elasticsearch',
      #datadir =>  undef,
      #logging_file =>  undef,
      #logging_config =>  undef,
      #logging_level => 'INFO',
      #init_defaults => undef,	
    },
  },
  $elasticsearch_instances_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
      ensure  =>  'present',
      status  =>  'enabled',
      #config =>  { 'node.name' => 'nodename', 'cluster.name' => 'otherclustername' },
      #configdir  =>  undef,
      #datadir =>  undef,
      #logging_file =>  undef,
      #logging_config =>  undef,
      #logging_level => 'INFO',
      #init_defaults => undef,	
  },
) {

  # call elasticsearch::instance define to configure each elasticsearch instance
  create_resources(elasticsearch::instance, $elasticsearch_instances, $elasticsearch_instances_defaults)
  
}