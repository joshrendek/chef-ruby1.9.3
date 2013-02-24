#
# Cookbook Name:: ruby1.9.3
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
packages = case node[:platform]
           when "ubuntu","debian"
             [
               "ruby1.9.3"
             ].compact

           end
unless packages.nil?
  packages.each do |pkg|
    package pkg do
      action :install
    end
  end
end
