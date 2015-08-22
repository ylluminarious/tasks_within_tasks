require_relative "directory_rearranger_task"

class DirectoryHelperTask < Volt::Task
  def list_contents
    contents = []
    Dir.glob("*").each do |file|
      contents << file
    end
    
    DirectoryRearrangerTask.new.rearrange(contents)
    
    contents
  end
end