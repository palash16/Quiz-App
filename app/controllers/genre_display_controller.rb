class GenreDisplayController < ApplicationController
  def new
  end

  def show
  	@test=Question.new()

  	a = Genre.where(title:params[:genre])
  	b = Subgenre.where(Genre_id:a[0].id)
  	$c = Question.where(Subgenre_id:b[0].id)
    $x = 1
  end

  def check
    a = Genre.where(title:params[:genre])
    b = Subgenre.where(Genre_id:a[0].id)
    $c = Question.where(Subgenre_id:b[0].id)
    $x = 1
  	@test=Question.new(question_params)
    string = ""
    if params[:question][:op1] == "1"
      string += "A"
    end
    if params[:question][:op2] == "1"
      string += "B"
    end
    if params[:question][:op3] == "1"
      string += "C"
    end
    if params[:question][:op4] == "1"
      string += "D"
    end
    restore = Restore.where(user_id: current_user.id)
    if(restore.empty? == true)
      restore = Restore.new()
      restore.user_id = current_user.id
      restore.last_ques = $x + 1
      restore.subgenre_id = 0
    if($c[$x].answer == string)
      restore.score = 1
    end
      restore.save()
    else
      restore[0].last_ques = $x + 1
      restore[0].subgenre_id = 0
    if($c[$x].answer == string)
      restore[0].score += 1
    end
      restore[0].save()
    end
    $x = $x + 1
    render 'show'
  end	

  	private

  	def question_params
  		params.require(:question).permit(:question, :A, :B,
  									:C, :D, :genre, :a1, :a2, :a3, :a4, :subgenre)
  	end													

end
