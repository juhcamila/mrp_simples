class MrpsController < ApplicationController
  before_action :set_mrp, only: [:show, :edit, :update, :destroy]

  # GET /mrps
  # GET /mrps.json
  def index
    @mrps = Mrp.all
    @nece = []
    @repro = []
    t = 0
    @estoque = []
    @lec = []
    @ltn = [0, 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0]
    @mrps.each {|a| @nece  = [ a.a1.to_i, a.a2.to_i, a.a3.to_i, a.a4.to_i,a.a5.to_i, a.a6.to_i,a.a7.to_i, a.a8.to_i, a.a9.to_i, a.a10.to_i, a.a11.to_i]
    @repro  = [ a.b1.to_i, a.b2.to_i, a.b3.to_i, a.b4.to_i,a.b5.to_i, a.b6.to_i,a.b7.to_i, a.b8.to_i, a.b9.to_i, a.b10.to_i, a.b11.to_i]
    @est = a.est
    @c2 = a.c2
    @c3 = a.c3
    @lt = a.lt}

    f = @est
    @nece.each do |a|

      l = (@est + @repro[t] - a ) < 0 ? a - @est + @repro[t] : 0

     puts r = (Math.sqrt(2 * a * @c2 / @c3)).round(0)

     if l == 0
      @lec << 0

    elsif r > l
      @lec << r

      if (t - @lt ) >= 0
       @ltn[t - @lt] = r
      end

    else
    c = l / r
     @lec << r * (c + 1).to_i

      if (t - @lt ) >= 0
        @ltn[t - @lt] = r * (c + 1).round(0)
      end
    end

      if @lec[t] > 0
    est = @est + @lec[t] - a
      else
        est = @est + @repro[t] - a
        end
      @est = est
    i = @est
    @estoque << [f, i]
    f = i
    t += 1 end


  end

  # GET /mrps/1
  # GET /mrps/1.json
  def show
  end

  # GET /mrps/new
  def new
    @mrp = Mrp.new
  end

  # GET /mrps/1/edit
  def edit
  end

  # POST /mrps
  # POST /mrps.json
  def create
    @mrp = Mrp.new(mrp_params)

    respond_to do |format|
      if @mrp.save
        format.html { redirect_to @mrp, notice: 'Mrp was successfully created.' }
        format.json { render :show, status: :created, location: @mrp }
      else
        format.html { render :new }
        format.json { render json: @mrp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mrps/1
  # PATCH/PUT /mrps/1.json
  def update
    respond_to do |format|
      if @mrp.update(mrp_params)
        format.html { redirect_to mrps_path , notice: 'Mrp was successfully updated.' }
        format.json { render :index, status: :ok, location: @mrp }
      else
        format.html { render :edit }
        format.json { render json: @mrp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mrps/1
  # DELETE /mrps/1.json
  def destroy
    @mrp.destroy
    respond_to do |format|
      format.html { redirect_to mrps_url, notice: 'Mrp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mrp
      @mrp = Mrp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mrp_params
      params.require(:mrp).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10, :b11, :c2, :c3, :est, :lt)
    end
end
