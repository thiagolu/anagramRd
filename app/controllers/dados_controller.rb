class DadosController < ApplicationController
  before_action :set_dado, only: [:show, :edit, :update, :destroy]

  # GET /dados
  # GET /dados.json
  def index
    @dados = Dado.all
  end

  # GET /dados/1
  # GET /dados/1.json
  def show
    
         if @dado.word1.gsub(/\s+/,'').downcase.chars.sort == @dado.word2.gsub(/\s+/,'').downcase.chars.sort
          @dado.result = true
          else
            @dado.result = false
          end
    
  end

  # GET /dados/new
  def new
    @dado = Dado.new
    
            
  end

  # GET /dados/1/edit
  def edit
  end

  # POST /dados
  # POST /dados.json
  def create
    @dado = Dado.new(dado_params)

    respond_to do |format|
      if @dado.save

        
         if @dado.word1.gsub(/\s+/,'').downcase.chars.sort == @dado.word2.gsub(/\s+/,'').downcase.chars.sort
   
          format.html { redirect_to @dado, notice: 'Dado was successfully created. And it is an anagram' }
          format.json { render :show, status: :created, location: @dado }          
          else
            
          format.html { redirect_to @dado, notice: 'Dado was successfully created. And it is not an anagram' }
          format.json { render :show, status: :created, location: @dado }                 
            end
         
            else
        format.html { render :new }
        format.json { render json: @dado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dados/1
  # PATCH/PUT /dados/1.json
  def update
    respond_to do |format|
      if @dado.update(dado_params)

        format.html { redirect_to @dado, notice: 'Dado was successfully updated.' }
        format.json { render :show, status: :ok, location: @dado }
      else
        format.html { render :edit }
        format.json { render json: @dado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dados/1
  # DELETE /dados/1.json
  def destroy
    @dado.destroy
    respond_to do |format|
      format.html { redirect_to dados_url, notice: 'Dado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dado
      @dado = Dado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dado_params
      params.require(:dado).permit(:word1, :word2, :result)
      
    end
    

end
