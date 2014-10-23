class PeopleController < ApplicationController

  def index

    if params[:sort_by] == 'awesome'
      @people = Person.where(:awesome => true)
    else
      @people = Person.order(params[:sort_by])
    end #end if

  end #end index

end #end class
