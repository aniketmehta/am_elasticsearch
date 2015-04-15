#### Class for ENC like foreman for elastic search python
class elasticsearch::mypython (
  $elasticsearch_python = {
    # these values you will see as default in your ENC like The Foreman
    instance01 => {
      ensure  =>  'present',
    },
  },
  $elasticsearch_python_defaults = {
      # these values are taken if you won't specify values in your ENC like The Foreman
      ensure  =>  'present',
  },
) {

  # call elasticsearch::python define to configure each elasticsearch python
  create_resources(elasticsearch::python, $elasticsearch_python, $elasticsearch_python_defaults)

}