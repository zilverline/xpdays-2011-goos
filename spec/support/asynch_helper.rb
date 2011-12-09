module AsyncHelper
  def eventually
    last_error = nil
    satisfied = false
    [0.1, 0.5, 1, 1, 2].each do |interval|
      begin
        yield
        satisfied = true
      rescue => error
        satisfied = false
        last_error = error
      end
      return if satisfied
      sleep interval
    end
    raise last_error unless satisfied    
  end
end
