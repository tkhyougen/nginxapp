rails_root = File.expand_path('../../', __FILE__)
worker_processes 2
working_directory rails_root

listen "#{rails_root}/tmp/unicorn.sock"
pid "#{rails_root}/tmp/unicorn.pid"

stderr_path "#{rails_root}/log/unicorn_error.log"
stdout_path "#{rails_root}/log/unicorn.log"

# # -*- coding: utf-8 -*-
# worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
# timeout 15
# preload_app true  # 更新時ダウンタイム無し
#
# listen "/tmp/unicorn.sock"
# pid "/tmp/unicorn.pid"
#
# before_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
#     Process.kill 'QUIT', Process.pid
#   end
#
#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.connection.disconnect!
# end
#
# after_fork do |server, worker|
#   Signal.trap 'TERM' do
#     puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
#   end
#
#   defined?(ActiveRecord::Base) and
#     ActiveRecord::Base.establish_connection
# end
#
# # ログの出力
# stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
# stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
