class OmikujiController < ApplicationController
  require Rails.root.join("app/lib/gorilla_omikuji")

  def index
    random_index = rand(GorillaOmikuji::LIST.size)
    redirect_to omikuji_result_path(random_index)
  end

  def result
    list = GorillaOmikuji::LIST
    id = params[:id].to_i
    return render plain: "Not Found", status: 404 if id < 0 || id >= list.size

    @result = list[id]
  end
end
