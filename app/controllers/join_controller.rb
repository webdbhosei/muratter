class JoinController < ApplicationController
  def confirm
      @chatroom = Chatroom.find(params[:id])
  end

  def join
     join_params = {
         :user_id => current_user.id,
         :chatroom_id => params[:id],
         :pending => 0,  # ToDo: 現在、常にmanagerの確認なしで参加
     }
     @join = Join.new(join_params)
     @join.save
     session[:chatroom_id] = params[:id]
     redirect_to chats_path(params[:id])
  end

  # 既に、joinテーブルには追加済みなので、入室処理のみ
  def enter
      session[:chatroom_id] = params[:id]
      redirect_to chats_path(params[:id])
  end
end
