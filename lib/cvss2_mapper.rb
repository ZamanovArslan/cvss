module CVSS2Mapper
  def av_mapper(value)
    {
      l: 0.395,
      a: 0.646,
      n: 1,
    }[value.downcase.to_sym]
  end

  def ac_mapper(value)
    {
      h: 0.35,
      m: 0.61,
      l: 0.71,
    }[value.downcase.to_sym]
  end

  def au_mapper(value)
    {
      m: 0.45,
      s: 0.56,
      n: 0.704,
    }[value.downcase.to_sym]
  end

  def cia_mapper(value)
    {
      n: 0,
      p: 0.275,
      c: 0.66,
    }[value.downcase.to_sym]
  end
end