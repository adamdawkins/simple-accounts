require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ExplainationsController do

  # This should return the minimal set of attributes required to create a valid
  # Explaination. As you add validations to Explaination, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "reason" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExplainationsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all explainations as @explainations" do
      explaination = Explaination.create! valid_attributes
      get :index, {}, valid_session
      assigns(:explainations).should eq([explaination])
    end
  end

  describe "GET show" do
    it "assigns the requested explaination as @explaination" do
      explaination = Explaination.create! valid_attributes
      get :show, {:id => explaination.to_param}, valid_session
      assigns(:explaination).should eq(explaination)
    end
  end

  describe "GET new" do
    it "assigns a new explaination as @explaination" do
      get :new, {}, valid_session
      assigns(:explaination).should be_a_new(Explaination)
    end
  end

  describe "GET edit" do
    it "assigns the requested explaination as @explaination" do
      explaination = Explaination.create! valid_attributes
      get :edit, {:id => explaination.to_param}, valid_session
      assigns(:explaination).should eq(explaination)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Explaination" do
        expect {
          post :create, {:explaination => valid_attributes}, valid_session
        }.to change(Explaination, :count).by(1)
      end

      it "assigns a newly created explaination as @explaination" do
        post :create, {:explaination => valid_attributes}, valid_session
        assigns(:explaination).should be_a(Explaination)
        assigns(:explaination).should be_persisted
      end

      it "redirects to the created explaination" do
        post :create, {:explaination => valid_attributes}, valid_session
        response.should redirect_to(Explaination.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved explaination as @explaination" do
        # Trigger the behavior that occurs when invalid params are submitted
        Explaination.any_instance.stub(:save).and_return(false)
        post :create, {:explaination => { "reason" => "invalid value" }}, valid_session
        assigns(:explaination).should be_a_new(Explaination)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Explaination.any_instance.stub(:save).and_return(false)
        post :create, {:explaination => { "reason" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested explaination" do
        explaination = Explaination.create! valid_attributes
        # Assuming there are no other explainations in the database, this
        # specifies that the Explaination created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Explaination.any_instance.should_receive(:update_attributes).with({ "reason" => "MyString" })
        put :update, {:id => explaination.to_param, :explaination => { "reason" => "MyString" }}, valid_session
      end

      it "assigns the requested explaination as @explaination" do
        explaination = Explaination.create! valid_attributes
        put :update, {:id => explaination.to_param, :explaination => valid_attributes}, valid_session
        assigns(:explaination).should eq(explaination)
      end

      it "redirects to the explaination" do
        explaination = Explaination.create! valid_attributes
        put :update, {:id => explaination.to_param, :explaination => valid_attributes}, valid_session
        response.should redirect_to(explaination)
      end
    end

    describe "with invalid params" do
      it "assigns the explaination as @explaination" do
        explaination = Explaination.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Explaination.any_instance.stub(:save).and_return(false)
        put :update, {:id => explaination.to_param, :explaination => { "reason" => "invalid value" }}, valid_session
        assigns(:explaination).should eq(explaination)
      end

      it "re-renders the 'edit' template" do
        explaination = Explaination.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Explaination.any_instance.stub(:save).and_return(false)
        put :update, {:id => explaination.to_param, :explaination => { "reason" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested explaination" do
      explaination = Explaination.create! valid_attributes
      expect {
        delete :destroy, {:id => explaination.to_param}, valid_session
      }.to change(Explaination, :count).by(-1)
    end

    it "redirects to the explainations list" do
      explaination = Explaination.create! valid_attributes
      delete :destroy, {:id => explaination.to_param}, valid_session
      response.should redirect_to(explainations_url)
    end
  end

end