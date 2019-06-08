# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser 

    attr_accessor :emails

    def initialize(email)
        @emails = email
    end


    def parse
        email_list = @emails.split(" ")

        email_list.map do |email|
            if email.end_with?(",")
                email.slice(0, email.length-1)
            else
                email
            end
        end.uniq
    end


end