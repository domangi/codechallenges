require_relative 'tidy_number'

describe TidyNumber do
    subject { TidyNumber.solve(number) }

    before { subject }

    context "when number = 1" do
        let(:number) { '1 ' }

        it { should eq 1 }
    end

    context "when number = 1111111110" do
        let(:number) { '1111111110' }

        it { should eq 999999999 }
    end

    context "when number = 342" do
        let(:number) { '342' }

        it { should eq 339 }
    end

end