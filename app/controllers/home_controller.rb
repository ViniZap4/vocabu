
class HomeController < ApplicationController 
  before_action :listschat
  $moment = 0

 
  #                    ACTION AREA
  def index
    

  end
  def reindex
    

  end
  def res
   
    messagein = Inputt.find_by(message: params[:inputt])



    if  messagein.present?   and $moment == 0  
      messageinid = messagein.id 
      redirect_to '/'

      talk = Talke.new
      talk.user =  messagein.message
      talk.vocabu = @outputts.find(messageinid).message
      talk.save
   

    elsif
      if $moment == 0 
        message_inputt = Inputt.new
        message_inputt.message = params[:inputt] 
        message_inputt.save  
        $moment = 1
        
        
        messagein = Inputt.find_by(message: params[:inputt] )
        messageinid = messagein.id
        
        redirect_to '/res'
      elsif $moment == 1   
        new_outputt = Outputt.new
        new_outputt.message = params[:inputt] 
        new_outputt.save
        $moment = 0

        new_talk = Talke.new
          new_talk.user =  @inputts.last.message  
          new_talk.vocabu = @outputts.last.message 
        new_talk.save

        redirect_to '/'

      end
   
    end

  end

  def limpar
    Talke.destroy_all
 
    redirect_to '/'
  end
  def cancel
    Inputt.last.destroy
 
    redirect_to '/'
  end
  
  private
    def listschat
      @inputts = Inputt.all 
      @outputts = Outputt.all
      @talk = Talke.all
    end
end