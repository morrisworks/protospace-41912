class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)

  # Prototype.create() を使うなら persisted? で保存確認が必要。
  if @comment.save
  redirect_to prototype_path(@comment.prototype)
  else
    @prototype = @comment.prototype # 失敗時に必要なインスタンス変数を設定
    render 'prototypes/show'  end
end

private
def comment_params
  params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
end

end