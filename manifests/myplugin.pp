# class to pass values from ENC to elasticsearch
class elasticsearch::myplugin (
  $elasticsearch_plugins = {
    # these values you will see as default in your ENC like The Foreman
    'elasticsearch/elasticsearch-mapper-attachments/2.2.0' => {
        module_dir => 'mapper-attachments',
        instances => 'instance01',
        ensure => 'present',
        url => '',
    },
    'com.github.richardwilly98.elasticsearch/elasticsearch-river-mongodb/2.0.1' => {
        module_dir => 'river-mongodb',
        instances => 'instance01',
        ensure => 'present',
        url => ''
    },  
    'elasticsearch/elasticsearch-analysis-phonetic/2.2.0' => {
        module_dir => 'analysis-phonetic',
        instances => 'instance01',
        ensure => 'present',
        url => '',
    }, 
    'elasticsearch-jetty' => {
        module_dir => 'jetty',
        instances => 'instance01',
        ensure => 'present',
        url => 'https://oss-es-plugins.s3.amazonaws.com/elasticsearch-jetty/elasticsearch-jetty-1.2.1.zip',
    },	

  },
  $elasticsearch_plugins_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
       module_dir  => '',
       instances  => '',
       ensure    => 'present',
       url    => '',
  },
) {

  # call tomcats::install define to configure each tomcat instance
  create_resources(elasticsearch::plugin, $elasticsearch_plugins, $elasticsearch_plugins_defaults)
}
        