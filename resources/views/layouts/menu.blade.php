<li class="side-menus {{ Request::is('home') ? 'active' : '' }}">
    <a class="nav-link" href="/">
        <i class=" fas fa-building"></i><span>Dashboard</span>
    </a>
</li>

@can('ver-user')
<li class="menu-header"><span> ADMINISTRADOR </span></li>

    <li class="side-menus {{ Request::is('users.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{route('users.index')}}">
            <i class="fas fa-user-shield"></i><span>Gestores</span>
        </a>
    </li>
@endcan
@can('ver-rol')
    <li class="side-menus {{ Request::is('roles.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{route('roles.index')}}">
            <i class="fas fa-user-tag"></i></i><span>Roles</span>
        </a>
    </li>
@endcan

@can('ver-region')
    <li class="side-menus {{ Request::is('regiones.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{route('regiones.index')}}">
            <i class="fas fa-table"></i><span>Regiones</span>
        </a>
    </li>
@endcan

@can('ver-delegacion')
    <li class="side-menus {{ Request::is('delegaciones.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{route('delegaciones.index')}}">
            <i class="fas fa-table"></i><span>Delegaciones</span>
        </a>
    </li>
@endcan

@can('ver-delegacion')
    <li class="side-menus {{ Request::is('usuarios.index') ? 'active' : '' }}">
        <a class="nav-link" href="{{route('usuarios.index')}}">
            <i class="fas fa-table"></i><span>Usuarios</span>
        </a>
    </li>
@endcan
