require 'rspec'

RSpec.describe "Antiprivate" do
  it "makes all newly-declared private and protected methods public" do
    class ExistingClass
      def public_method
        ["public", protected_method, private_method].join(",")
      end
      protected
        def protected_method
          "protected"
        end
      private
        def private_method
          "private"
        end
    end

    require 'antiprivate'

    class NewClass
      def public_method
        ["public", protected_method, private_method].join(",")
      end

      protected
        def protected_method
          "protected"
        end

      private
        def private_method
          "private"
        end
    end

    expect(ExistingClass.new.public_method).to    eq "public,protected,private"
    expect { ExistingClass.new.protected_method }.to raise_error(NoMethodError)
    expect { ExistingClass.new.private_method   }.to raise_error(NoMethodError)

    expect(NewClass.new.public_method).to    eq "public,protected,private"
    expect(NewClass.new.protected_method).to eq "protected"
    expect(NewClass.new.private_method).to   eq "private"
  end
end
