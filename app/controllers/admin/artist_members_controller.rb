class ArtistMembersController < AdminController
  before_action :set_artist_member, only: [:show, :edit, :update, :destroy]

  # GET /artist_members
  # GET /artist_members.json
  def index
    @artist_members = ArtistMember.all
  end

  # GET /artist_members/1
  # GET /artist_members/1.json
  def show
  end

  # GET /artist_members/new
  def new
    @artist_member = ArtistMember.new
  end

  # GET /artist_members/1/edit
  def edit
  end

  # POST /artist_members
  # POST /artist_members.json
  def create
    @artist_member = ArtistMember.new(artist_member_params)

    respond_to do |format|
      if @artist_member.save
        format.html { redirect_to @artist_member, notice: 'Artist member was successfully created.' }
        format.json { render :show, status: :created, location: @artist_member }
      else
        format.html { render :new }
        format.json { render json: @artist_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_members/1
  # PATCH/PUT /artist_members/1.json
  def update
    respond_to do |format|
      if @artist_member.update(artist_member_params)
        format.html { redirect_to @artist_member, notice: 'Artist member was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_member }
      else
        format.html { render :edit }
        format.json { render json: @artist_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_members/1
  # DELETE /artist_members/1.json
  def destroy
    @artist_member.destroy
    respond_to do |format|
      format.html { redirect_to artist_members_url, notice: 'Artist member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_member
      @artist_member = ArtistMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_member_params
      params.require(:artist_member).permit(:Artist_id, :Member_id, :role)
    end
end
