class MultistepForm < Reform::Form
   
   class User < Reform::Form
     property :first_name
     property :last_name

     validates :first_name, :last_name, presence: true
   end
end
