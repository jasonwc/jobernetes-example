Jobernetes.configure do |config|
 config.kube_config_path =  File.join(ENV['HOME'], ".kube", "config")
end
