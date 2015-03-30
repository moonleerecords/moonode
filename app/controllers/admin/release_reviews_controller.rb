class Admin::ReleaseReviewsController < AdminController
  before_action :set_release_review, only: [:show, :edit, :update, :destroy]

  # GET /release_reviews
  # GET /release_reviews.json
  def index
    @release_reviews = ReleaseReview.all
  end

  # GET /release_reviews/1
  # GET /release_reviews/1.json
  def show
  end

  # GET /release_reviews/new
  def new
    @release_review = ReleaseReview.new
  end

  # GET /release_reviews/1/edit
  def edit
  end

  # POST /release_reviews
  # POST /release_reviews.json
  def create
    @release_review = ReleaseReview.new(release_review_params)

    respond_to do |format|
      if @release_review.save
        format.html { redirect_to @release_review, notice: 'Release review was successfully created.' }
        format.json { render :show, status: :created, location: @release_review }
      else
        format.html { render :new }
        format.json { render json: @release_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /release_reviews/1
  # PATCH/PUT /release_reviews/1.json
  def update
    respond_to do |format|
      if @release_review.update(release_review_params)
        format.html { redirect_to @release_review, notice: 'Release review was successfully updated.' }
        format.json { render :show, status: :ok, location: @release_review }
      else
        format.html { render :edit }
        format.json { render json: @release_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /release_reviews/1
  # DELETE /release_reviews/1.json
  def destroy
    @release_review.destroy
    respond_to do |format|
      format.html { redirect_to release_reviews_url, notice: 'Release review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release_review
      @release_review = ReleaseReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_review_params
      params.require(:release_review).permit(:release_id, :title, :url, :quotes, :visible)
    end
end
