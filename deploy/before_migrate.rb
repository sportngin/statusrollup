Chef::Log.info("Running deploy/before_migrate.rb...")

Chef::Log.info("Run Bundle Install")
execute "bundle install" do
  cwd release_path
  command "bundle install --path #{new_resource.deploy_to}/shared/bundle --without=test development --deployment"
end
