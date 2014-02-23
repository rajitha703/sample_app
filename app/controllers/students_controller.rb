class StudentsController < ApplicationController

   def index
     @student = Student.all 
   end

   def new
    @student = Student.new
   end

  def create
    @student = Student.new(params[:student].permit(:FIRST_NAME, :MIDDLE_NAME,
    	         :LAST_NAME, :DATE_OF_BIRTH, :AGE, 
    	         :GENDER, :NATIONALITY))
    
    if @student.save
     #sign_in @user
     flash[:success] = "Student entry for  " + @student.FIRST_NAME + "  updated successfully"  
      redirect_to @student
     else
       render 'new'
      end
  end

  def show
 end

 # def edit
 # end

 # def delete
 # end


end
