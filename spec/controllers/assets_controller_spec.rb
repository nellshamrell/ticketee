context "users with access" do
  before do
    sign_in(:user, good_user)
  end

  it "can access assets in a project" do
    get 'show', :id => asset.id
    response.body.should eql(File.read(path))
  end
end

context "users without access" do
  before do
    sign_in(:user, bad_user)
  end

  it "cannot access assets in this project" do
    get 'show', :id => asset.id
    response.should redirect_to(root_path)
    flash[:alert].should eql("The asset you were looking for could not be found")
  end
end
