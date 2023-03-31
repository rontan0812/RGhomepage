class ClaimController < ApplicationController
    def claim_form
    end
    def claim
        @claim=Claim.new(
            email: params[:email],
            content: params[:content]
        )
        puts @claim.email
        if @claim.save
            flash[:notice]="送信しました"
            redirect_to("/")
        else
            flash.now[:notice]="送信できませんでした"
            @claim_email=params[:email]
            @claim_content=params[:content]
            render :claim_form, status: :unprocessable_entity
        end
    end
    def index
        @claim=Claim.all
    end
end
