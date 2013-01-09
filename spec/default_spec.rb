require 'chefspec'
describe 'tcl::default' do
  context 'on ubuntu 12.04' do
    let (:chef_run) { ChefSpec::ChefRunner.new.converge 'tcl::default' }
    it 'install the tcl package' do
      chef_run.should install_package 'tcl'
    end 
  end 
end
