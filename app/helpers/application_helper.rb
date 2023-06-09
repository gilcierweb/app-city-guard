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

  def display_kind_enum(level)
    case level.to_sym
    when 1, :car then
      'Carro'
    when 2, :moto then
      'Moto'
    when 3, :both then
      'Ambos'
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
    when 1, :confiscated then
      '<span class="badge bg-danger">Confiscado</span>'
    when 2, :patio then
      '<span class="badge bg-warning">Pátio</span>'
    when 3, :liberated then
      '<span class="badge bg-success">Liberado</span>'
    when 4, :pending then
      '<span class="badge bg-primary">Pendente</span>'
    else
      '<span class="badge bg-dark">Não informado</span>'
    end
  end

  def display_boolean_badge(level)
    case level
    when 1, true, 'active', 'yes', 'yes_ap' then
      '<span class="badge bg-success">Ativo</span>'
    when 0, false, 'inactive', 'no', 'no_ap' then
      '<span class="badge bg-danger">Inativo</span>'
    end
  end

  def format_date(date)
    date.strftime('%d/%m/%Y') if date.present?
  end

  def format_datetime(datetime)
    datetime.strftime('%d/%m/%Y %H:%M') if datetime.present?
  end
end
