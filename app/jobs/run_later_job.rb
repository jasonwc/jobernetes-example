class RunLaterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Rails.logger.debug("I run later!")
  end

  def self.manifest
    {
      'apiVersion' => 'batch/v1',
      'metadata' => {
        'name' => 'pi',
        'namespace' => 'default'
      },
      'spec'     => {
        'template' => {
          'metadata' => {
            'name' => 'pi'
          },
          'spec'    => {
            'containers'   => [
              {
                'name'    => 'pi',
                'image'   => 'perl',
                'command' => ['perl',  '-Mbignum=bpi', '-wle', 'print bpi(2000)']
              }
            ],
            'restartPolicy' => 'Never'
          }
        }
      }
    }
  end
end
