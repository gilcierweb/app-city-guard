module ApplicationHelper

  include Pagy::Frontend

  def flash_class(level)
    case level
    when 'info' then
      "alert alert-info"
    when 'notice', 'success' then
      "alert alert-success"
    when 'error' then
      "alert alert-danger"
    when 'alert' then
      "alert alert-warning"
    end
  end

  def display_boolean(level)
    case level
    when 1, true, 'active' then
      'Ativo'
    when 0, false, 'inactive' then
      'Inativo'
    end
  end

  def display_boolean_raw(level)
    case level
    when 1, true, 'active', 'yes', 'yes_ap' then
      'Sim'
    when 0, false, 'inactive', 'no', 'no_ap' then
      'Não'
    end
  end

  def display_enum(level)
    case level
    when 1, :car then
      'Carro'
    when 2, :moto then
      'Moto'
    when 3, :truck then
      'Caminhão'
    end
  end

  def active_class(path)
    if request.path == path
      return 'active'
    else
      return ''
    end
  end

  def display_situation_enum(level)
    case level
    when 1, :car then
      'Carro'
    when 2, :moto then
      'Moto'
    when 3, :truck then
      'Caminhão'
    end
  end
end
