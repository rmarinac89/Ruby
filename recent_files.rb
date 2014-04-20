require 'rspec'

# Requirements:

# Implement a class, name it RecentFiles

# The class should be able to handle the following scenarios:
  
  # Output a list of most recent accessed files.
  # If a file with the same name is accessed multiple times, your list should include or consider it only once.
  # Your list should only keep track of the most recent 5 files.
  # The most recent file should be on top of the list OR first element in your list.



class RecentFiles

  def initialize(file_list)
    @recent = file_list

    if @recent.length > 5
      @recent.slice!(0,4)
    end
  end

  def add(filename)
    unless @recent.include?(filename)   
      @recent.unshift(filename) 
    end   
  end

  def files
    @recent.each { |filename| puts filename }
  end

end

recent_list = RecentFiles.new(["file1", "file2", "file3", "file4", "file5"])

recent_list.add("file6")

puts recent_list.files

# an it blocks tests a certain scenerios that our program should statisfy.

# .should method is built into rpsec


describe RecentFiles do


  describe '#intialize' do

    it 'can be initialized with an empty list' do
      recent = RecentFiles.new([])
      recent.files.should == []
    end

    it 'cannot be initialized without a list of file names' do
      expect { recent = RecentFiles.new }.to raise_error
    end

    it 'can be initialized with less than 5 files' do
      file_list = [1,2,3,4]
      recent = RecentFiles.new(file_list)
      recent.files.should eq(file_list)
    end

    it 'can contain maximum 5 files only/1st five' do
      file_list = [1,2,3,4,5,6]
      recent = RecentFiles.new(file_list)
      recent.files.should eq(file_list[0..4])
    end

  end

  describe '#list' do

    it 'should return the list of the files' do
      file_list = ['file1', 'file2', 'file3']
      recent = RecentFiles.new(file_list)
      recent.files.should eq(file_list)
    end

    it 'should return the running list' do
      recent = RecentFiles.new(['file1', 'file2', 'file3'])
      recent.add('file4')
      recent.add('file5')
      recent.files.should eq(['file5', 'file4', 'file1', 'file2', 'file3'])
    end

  end


  describe '#add' do

    it 'should be able to add files to the list' do
      recent = RecentFiles.new([])
      recent.add('filename')
      recent.files.should include('filename')
    end

    it 'cannot contain duplicates' do
      recent = RecentFiles.new([])
      recent.add('filename')
      recent.add('filename')
      recent.files.should eq(['filename'])
    end

  end

end