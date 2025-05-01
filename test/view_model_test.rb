require "test_helper"

class ViewModelTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ViewModel::VERSION
  end

  def test_to_h_with_valid_attributes
    @hash = {name: "John Doe", age: 70}
    @model = ViewModel.new(@hash)
    assert_equal @hash, @model.to_hash
  end

  def test_to_h_with_reserved_attributes
    @hash = {class: "d-none"}
    @model = ViewModel.new(@hash)
    assert_equal @hash, @model.to_hash
  end

  def test_valid_attribute
    @model = ViewModel.new(name: "John Doe", age: 70)
    assert_equal "John Doe", @model.name
    assert_equal 70, @model.age
  end

  def test_missing_attribute
    @model = ViewModel.new(name: "John Doe", age: 70)
    assert_nil @model.non_existent
  end

  def test_reserved_attribute
    @model = ViewModel.new(class: "d-none")
    assert_equal ViewModel, @model.class
  end
end
