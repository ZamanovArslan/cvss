require "cvss2_mapper"
class CVSS2
  include CVSS2Mapper
  attr_reader :av, :ac, :au, :c, :i, :a
  def initialize(params)
    @av = av_mapper(params[:av])
    @ac = ac_mapper(params[:ac])
    @au = au_mapper(params[:au])
    @c = cia_mapper(params[:c])
    @i = cia_mapper(params[:i])
    @a = cia_mapper(params[:a])
    puts base_score
    puts impact
    puts exploitability
  end

  def base_score
    (((0.6 * impact) + (0.4 * exploitability) - 1.5) * f).round 1
  end

  private

  def exploitability
    20 * av * ac * au
  end

  def impact
    10.41 * (1 - (1 - c)*(1 - i)*(1 - a))
  end

  def f
    impact.zero? ? 0 : 1.176
  end
end