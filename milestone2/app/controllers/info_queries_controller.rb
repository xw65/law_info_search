class InfoQueriesController < ApplicationController
  before_action :set_info_query, only: [:show, :edit, :update, :destroy]

  # GET /info_queries
  # GET /info_queries.json
  def index
    @info_queries = InfoQuery.all
  end

  # GET /info_queries/1
  # GET /info_queries/1.json
  def show
  end

  # GET /info_queries/new
  def new
    @info_query = InfoQuery.new
  end

  # GET /info_queries/1/edit
  def edit
  end

  # POST /info_queries
  # POST /info_queries.json
  def create
    # current info_query
    @info_query = InfoQuery.new(info_query_params)
    @test = "a test"
    #render "/info_queries/test.html.erb"
    #return
    respond_to do |format|
      if @info_query.save
        format.html { redirect_to @info_query,  notice: 'Info query was successfully created.' }
        format.json { render :show, status: :created, location: @info_query }
      else
        format.html { render :new }
        format.json { render json: @info_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /info_queries/1
  # PATCH/PUT /info_queries/1.json
  def update
    respond_to do |format|
      if @info_query.update(info_query_params)
        format.html { redirect_to @info_query, notice: 'Info query was successfully updated.' }
        format.json { render :show, status: :ok, location: @info_query }
      else
        format.html { render :edit }
        format.json { render json: @info_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /info_queries/1
  # DELETE /info_queries/1.json
  def destroy
    @info_query.destroy
    respond_to do |format|
      format.html { redirect_to info_queries_url, notice: 'Info query was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info_query
      @info_query = InfoQuery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_query_params
      params.require(:info_query).permit(:is_owner, :user_size, :oppo_size, :user_loc, :oppo_loc, :law_issue, :tech_area, :judge1, :judge2, :judge3)
    end

    # define function for query 1
    def find_percent(info) 
    	win = 0
	total = 0
    	@cases = Case.find(:issue => info.law_issue)
	@user_parties = Party.find(:size => info.user_size)
	@oppo_parties = Party.find(:size => info.oppo_size)
	@involves = @user_parties.involves
	@
    end     

    
end
