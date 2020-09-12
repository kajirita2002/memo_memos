class MemoMemosController < ApplicationController
  before_action :set_memo_memo, only: [:show, :edit, :update, :destroy]

  # GET /memo_memos
  # GET /memo_memos.json
  def index
    @memo_memos = MemoMemo.all
  end

  # GET /memo_memos/1
  # GET /memo_memos/1.json
  def show
  end

  # GET /memo_memos/new
  def new
    @memo_memo = MemoMemo.new
  end

  # GET /memo_memos/1/edit
  def edit
  end

  # POST /memo_memos
  # POST /memo_memos.json
  def create
    @memo_memo = MemoMemo.new(memo_memo_params)

    respond_to do |format|
      if @memo_memo.save
        format.html { redirect_to @memo_memo, notice: 'Memo memo was successfully created.' }
        format.json { render :show, status: :created, location: @memo_memo }
      else
        format.html { render :new }
        format.json { render json: @memo_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /memo_memos/1
  # PATCH/PUT /memo_memos/1.json
  def update
    respond_to do |format|
      if @memo_memo.update(memo_memo_params)
        format.html { redirect_to @memo_memo, notice: 'Memo memo was successfully updated.' }
        format.json { render :show, status: :ok, location: @memo_memo }
      else
        format.html { render :edit }
        format.json { render json: @memo_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /memo_memos/1
  # DELETE /memo_memos/1.json
  def destroy
    @memo_memo.destroy
    respond_to do |format|
      format.html { redirect_to memo_memos_url, notice: 'Memo memo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_memo_memo
      @memo_memo = MemoMemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def memo_memo_params
      params.require(:memo_memo).permit(:title, :language, :content)
    end
end
