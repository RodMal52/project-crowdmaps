module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | ProjectCrowdmaps"      
    end
  end
end
