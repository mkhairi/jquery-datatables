require "bundler/gem_tasks"

namespace :images do
  image_files = []
  Dir.glob('DataTables/media/images/*.png') do |src_file|
    src_filename = File.basename(src_file)
    tgt_file = "app/assets/images/datatables/#{src_filename}"

    file tgt_file => src_file do
      cp src_file, tgt_file
    end

    image_files.push tgt_file
  end

  desc "Delete images"
  task :clean do
    Dir.glob('app/assets/images/datatables/*.png') do |file|
      File.delete(file)
    end
  end

  desc "Copy images from DataTables/media/images/"
  task copy: image_files

  desc "Setup image assets"
  task setup: [:clean, :copy]
end

namespace :javascripts do
  
  desc "Cleaning javascripts directory"
  task :clean do
   rm_rf "app/assets/javascripts/datatables"
  end
  
  desc "Copy DataTables/media/js/"
  task :copy do
    src_dir = "DataTables/media/js/."
    tgt_dir = "app/assets/javascripts/datatables/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
  end
  
  desc "Copy DataTables/extensions/*/js"
  task :copy_extensions do
    extensions = %w(AutoFill Buttons ColReorder FixedColumns FixedHeader KeyTable Responsive RowReorder Scroller Select)
    extensions.each do |ext|
      src_dir = "DataTables/extensions/#{ext}/js/."
      tgt_dir = "app/assets/javascripts/datatables/extensions/#{ext}/"
      mkdir_p tgt_dir
      cp_r src_dir, tgt_dir
    end
  end

  desc "Setup javascript assets"
  task setup: [:clean, :copy, :copy_extensions]
end

namespace :stylesheets do
  desc "Cleaning stylesheets directory"
  task :clean do
   rm_rf "app/assets/stylesheets/datatables"
  end

  desc "Copy DataTables/media/css/"
  task :copy do
    src_dir = "DataTables/media/css/."
    tgt_dir = "app/assets/stylesheets/datatables/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
  end
  
  desc "Copy DataTables/extensions/*/css"
  task :copy_extensions do
    extensions = %w(AutoFill Buttons ColReorder FixedColumns FixedHeader KeyTable Responsive RowReorder Scroller Select)
    extensions.each do |ext|
      src_dir = "DataTables/extensions/#{ext}/css/."
      tgt_dir = "app/assets/stylesheets/datatables/extensions/#{ext}/"
      mkdir_p tgt_dir
      cp_r src_dir, tgt_dir
    end
  end

  desc "Fix image URLs in stylesheets"
  task :fix_urls do
    Dir.glob('app/assets/stylesheet/datatables/*.css').each do |tgt_file|
      content = File.read(tgt_file)
      fixed_content = content.gsub(/url\(\"\.\.\/images\/([A-Za-z_]*.png)\"\)/, 'image-url("\1")')
      File.open(tgt_file, "w") { |f| f.puts fixed_content}
    end
  end

  desc "Setup stylesheet assets"
  task setup: [:clean, :copy, :copy_extensions, :fix_urls]
end

desc "remove minified file .min"
task :cleanup do
   Dir.glob('app/assets/**/*.min.*').each do |file|
     rm file
   end
end

desc "Setup asset files"
task setup: ["images:setup", "javascripts:setup", "stylesheets:setup"]
