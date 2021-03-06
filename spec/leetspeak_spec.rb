require('rspec')
require('leetspeak')

describe('#leetspeak') do
  it("returns a string as is when no leetspeak rules apply") do
    expect(("jumpy").leetspeak()).to(eq("jumpy"))
  end

  it("replaces every 'e' or 'E' in a string with a '3'") do
    expect(("keep").leetspeak()).to(eq("k33p"))
  end

  it("replaces every 'o' or 'O' in a string with a '0'") do
    expect(("boo boo").leetspeak()).to(eq("b00 b00"))
  end

  it("replaces every 'I' in a string with a '1'") do
    expect(("I like Ike").leetspeak()).to(eq("1 lik3 1k3"))
  end

  it("replaces every 't' or 'T' in a string with a '7'") do
    expect(("teeth").leetspeak()).to(eq("7337h"))
  end

  it("replaces every 'a' or 'A' in a string with a '4'") do
    expect(("happy").leetspeak()).to(eq("h4ppy"))
  end

  it("replaces every 's' or 'S' in a string with a 'z'") do
    expect(("roses").leetspeak()).to(eq("r0z3z"))
  end

  it("does not replace first letter when it is an 's'") do
    expect(("sassafrass").leetspeak()).to(eq("s4zz4fr4zz"))
  end

  it("replaces letters correctly in a string of words") do
    expect(("I scream you scream we all scream for raspberry ice cream").leetspeak()).to(eq("1 scr34m y0u scr34m w3 4ll scr34m f0r r4zpb3rry ic3 cr34m"))
  end
end
