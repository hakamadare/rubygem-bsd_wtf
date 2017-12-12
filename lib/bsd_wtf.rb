require "bsd_wtf/version"
require "open3"
require "whiches"
require "json"

module BsdWtf
  def self.wtf(acronyms = [])
    _do_wtf(_get_wtf, acronyms)
  end

  private

  def self._do_wtf(wtf=_get_wtf, acronyms=[])
    wtf_cmd = wtf + ' ' + Array(acronyms).join(' ')

    stdout_str, stderr_str, status = Open3.capture3(wtf_cmd)

    if status.success?
      _process_wtf(stdout_str)
    else
      raise StandardError.new(stderr_str.chomp)
    end
  end

  def self._get_wtf
    results = Whiches.whiches("wtf")

    if results
      results[0]
    else
      raise StandardError.new("unable to find 'wtf' in path")
    end
  end

  def self._process_wtf(raw='')
    result = {
      :success => [],
      :failure => [],
    }

    raw.chomp.split("\n").each do |line|
      acronym, definition = line.split(':', 2)

      /nothing appropriate/ =~ definition

      if Regexp.last_match.nil?
        result[:success].push({:acronym => acronym, :definition => definition.strip})
      else
        result[:failure].push(acronym)
      end
    end

    result
  end
end
